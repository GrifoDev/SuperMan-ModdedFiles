.class public final enum Lcom/android/launcher2/LauncherApplication$HomeGridSize;
.super Ljava/lang/Enum;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HomeGridSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/LauncherApplication$HomeGridSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/LauncherApplication$HomeGridSize;

.field public static final enum GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

.field public static final enum GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

.field public static final enum GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    const-string v1, "GRID_4x4"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    new-instance v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    const-string v1, "GRID_4x5"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    new-instance v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    const-string v1, "GRID_5x5"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->$VALUES:[Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/LauncherApplication$HomeGridSize;
    .locals 1

    const-class v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/LauncherApplication$HomeGridSize;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->$VALUES:[Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    invoke-virtual {v0}, [Lcom/android/launcher2/LauncherApplication$HomeGridSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    return-object v0
.end method
