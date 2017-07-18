.class public final enum Ljava/security/cert/PKIXRevocationChecker$Option;
.super Ljava/lang/Enum;
.source "PKIXRevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/PKIXRevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/PKIXRevocationChecker$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string/jumbo v1, "ONLY_END_ENTITY"

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string/jumbo v1, "PREFER_CRLS"

    invoke-direct {v0, v1, v3}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string/jumbo v1, "NO_FALLBACK"

    invoke-direct {v0, v1, v4}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string/jumbo v1, "SOFT_FAIL"

    invoke-direct {v0, v1, v5}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/security/cert/PKIXRevocationChecker$Option;

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    aput-object v1, v0, v3

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    aput-object v1, v0, v4

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    aput-object v1, v0, v5

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1

    const-class v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method

.method public static values()[Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1

    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method
