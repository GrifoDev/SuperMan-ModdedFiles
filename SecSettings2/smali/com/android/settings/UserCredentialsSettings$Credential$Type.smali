.class final enum Lcom/android/settings/UserCredentialsSettings$Credential$Type;
.super Ljava/lang/Enum;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_PRIVATE_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_SECRET_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;


# instance fields
.field final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string/jumbo v1, "CA_CERTIFICATE"

    const-string/jumbo v2, "CACERT_"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string/jumbo v1, "USER_CERTIFICATE"

    const-string/jumbo v2, "USRCERT_"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string/jumbo v1, "USER_PRIVATE_KEY"

    const-string/jumbo v2, "USRPKEY_"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string/jumbo v1, "USER_SECRET_KEY"

    const-string/jumbo v2, "USRSKEY_"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_SECRET_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_SECRET_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .locals 1

    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .locals 1

    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object v0
.end method
