.class public final enum Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
.super Ljava/lang/Enum;
.source "OCSPResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v3}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v1, "MALFORMED_REQUEST"

    invoke-direct {v0, v1, v4}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    .line 125
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v5}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    .line 126
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v1, "TRY_LATER"

    invoke-direct {v0, v1, v6}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    .line 127
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v1, "UNUSED"

    invoke-direct {v0, v1, v7}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    .line 128
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v1, "SIG_REQUIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    .line 129
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v1, "UNAUTHORIZED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    .line 130
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 123
    const/4 v0, 0x7

    new-array v0, v0, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aput-object v1, v0, v5

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aput-object v1, v0, v6

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aput-object v1, v0, v7

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    const-class v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method

.method public static values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method
