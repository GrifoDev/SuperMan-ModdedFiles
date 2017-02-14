.class public final enum Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;
.super Ljava/lang/Enum;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/theme/OpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

.field public static final enum APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

.field public static final enum BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

.field public static final enum DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

.field public static final enum EVENT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

.field public static final enum HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

.field public static final enum WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    const-string v1, "APP_ICON"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->EVENT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    const-string v1, "WINSET"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    const-string v1, "BADGE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->EVENT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->$VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;
    .locals 1

    const-class v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;
    .locals 1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->$VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v0}, [Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value:I

    return v0
.end method
