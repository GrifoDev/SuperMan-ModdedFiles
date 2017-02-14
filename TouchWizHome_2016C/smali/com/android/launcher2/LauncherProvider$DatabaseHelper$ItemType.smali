.class public final enum Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;
.super Ljava/lang/Enum;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_APPLICATION:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_DISABLED_APP:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_FAVORITE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_MAGAZINE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_SHORTCUT:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_SURFACE_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_WIDGET_CLOCK:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_WIDGET_PHOTO_FRAME:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum HOME_WIDGET_SEARCH:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum MENU_APP:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum MENU_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum MENU_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field public static final enum SETTING_TOGGLE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

.field private static gValues:[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_FAVORITE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FAVORITE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_APPLICATION"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_APPLICATION:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_SHORTCUT"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SHORTCUT:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_DISABLED_APP"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_DISABLED_APP:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_WIDGET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_SAMSUNG_WIDGET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_SURFACE_WIDGET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_WIDGET_CLOCK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET_CLOCK:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_WIDGET_SEARCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET_SEARCH:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_WIDGET_PHOTO_FRAME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET_PHOTO_FRAME:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "MENU_APP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->MENU_APP:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "MENU_WIDGET"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->MENU_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "MENU_FOLDER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->MENU_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "HOME_MAGAZINE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_MAGAZINE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const-string v1, "SETTING_TOGGLE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->SETTING_TOGGLE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    sget-object v1, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FAVORITE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_APPLICATION:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SHORTCUT:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_DISABLED_APP:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET_CLOCK:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET_SEARCH:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET_PHOTO_FRAME:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->MENU_APP:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->MENU_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->MENU_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_MAGAZINE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->SETTING_TOGGLE:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->$VALUES:[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-static {}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->values()[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->gValues:[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

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

.method public static fromInt(I)Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->gValues:[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;
    .locals 1

    const-class v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->$VALUES:[Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v0}, [Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    return-object v0
.end method
