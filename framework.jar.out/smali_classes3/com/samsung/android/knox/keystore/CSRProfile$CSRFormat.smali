.class public final enum Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
.super Ljava/lang/Enum;
.source "CSRProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/CSRProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CSRFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public static final enum CRMF:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public static final enum PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public static final enum PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    const-string/jumbo v1, "PKCS10"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 74
    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    const-string/jumbo v1, "CRMF"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->CRMF:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 78
    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    const-string/jumbo v1, "PROPRIETARY"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;-><init>(Ljava/lang/String;I)V

    .line 81
    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->CRMF:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    return-object v0
.end method
