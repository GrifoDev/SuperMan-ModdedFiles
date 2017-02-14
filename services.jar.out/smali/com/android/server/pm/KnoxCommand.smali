.class public final enum Lcom/android/server/pm/KnoxCommand;
.super Ljava/lang/Enum;
.source "KnoxCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pm/KnoxCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/KnoxCommand;

.field public static final enum COPY_APP_DATA:Lcom/android/server/pm/KnoxCommand;

.field public static final enum RECONCILE_PACKAGES:Lcom/android/server/pm/KnoxCommand;

.field public static final enum REMOVE_APP_DATA:Lcom/android/server/pm/KnoxCommand;

.field public static final enum SYNC_PACKAGE_DIR:Lcom/android/server/pm/KnoxCommand;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/pm/KnoxCommand;

    const-string/jumbo v1, "COPY_APP_DATA"

    const-string/jumbo v2, "knox_cpappdata"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/pm/KnoxCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/KnoxCommand;->COPY_APP_DATA:Lcom/android/server/pm/KnoxCommand;

    new-instance v0, Lcom/android/server/pm/KnoxCommand;

    const-string/jumbo v1, "SYNC_PACKAGE_DIR"

    const-string/jumbo v2, "knox_syncpkgdir"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/pm/KnoxCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/KnoxCommand;->SYNC_PACKAGE_DIR:Lcom/android/server/pm/KnoxCommand;

    new-instance v0, Lcom/android/server/pm/KnoxCommand;

    const-string/jumbo v1, "REMOVE_APP_DATA"

    const-string/jumbo v2, "knox_rmappdata"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/KnoxCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/KnoxCommand;->REMOVE_APP_DATA:Lcom/android/server/pm/KnoxCommand;

    new-instance v0, Lcom/android/server/pm/KnoxCommand;

    const-string/jumbo v1, "RECONCILE_PACKAGES"

    const-string/jumbo v2, "knox_reconpkg"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/pm/KnoxCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/KnoxCommand;->RECONCILE_PACKAGES:Lcom/android/server/pm/KnoxCommand;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/pm/KnoxCommand;

    sget-object v1, Lcom/android/server/pm/KnoxCommand;->COPY_APP_DATA:Lcom/android/server/pm/KnoxCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pm/KnoxCommand;->SYNC_PACKAGE_DIR:Lcom/android/server/pm/KnoxCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/pm/KnoxCommand;->REMOVE_APP_DATA:Lcom/android/server/pm/KnoxCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/pm/KnoxCommand;->RECONCILE_PACKAGES:Lcom/android/server/pm/KnoxCommand;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/pm/KnoxCommand;->$VALUES:[Lcom/android/server/pm/KnoxCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/pm/KnoxCommand;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/KnoxCommand;
    .locals 1

    const-class v0, Lcom/android/server/pm/KnoxCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KnoxCommand;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/KnoxCommand;
    .locals 1

    sget-object v0, Lcom/android/server/pm/KnoxCommand;->$VALUES:[Lcom/android/server/pm/KnoxCommand;

    return-object v0
.end method


# virtual methods
.method asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/KnoxCommand;->name:Ljava/lang/String;

    return-object v0
.end method
