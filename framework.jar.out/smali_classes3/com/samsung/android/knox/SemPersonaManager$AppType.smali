.class public final enum Lcom/samsung/android/knox/SemPersonaManager$AppType;
.super Ljava/lang/Enum;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/knox/SemPersonaManager$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string/jumbo v1, "IME"

    const-string/jumbo v2, "TYPE_IME"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string/jumbo v1, "INSTALLER_WHITELIST"

    const-string/jumbo v2, "installerWhitelist"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string/jumbo v1, "DISABLED_LAUNCHERS"

    const-string/jumbo v2, "disabledLaunchers"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string/jumbo v1, "COM_DISABLED_OWNER_LAUNCHERS"

    const-string/jumbo v2, "comDisabledOwnerLaunchers"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/knox/SemPersonaManager$AppType;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-object v0
.end method


# virtual methods
.method public fromName(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    return-object v0
.end method
