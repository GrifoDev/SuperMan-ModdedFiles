.class public final enum Lcom/android/server/SamsungCoreServices$ServiceTag;
.super Ljava/lang/Enum;
.source "SamsungCoreServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamsungCoreServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SamsungCoreServices$ServiceTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_DSS_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_HORIZONTAL_MODE_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_MULTIWINDOW_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_MULTIWINDOW_STACK_COLOR_LAYER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_PACKAGE_CONFIGURATION_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_REDUCE_SCREEN_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_SAMSUNG_STARTING_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_SAMSUNG_WINDOW_STATE:Lcom/android/server/SamsungCoreServices$ServiceTag;

.field public static final enum TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_SAMSUNG_WINDOW_MANAGER_SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_SAMSUNG_PHONE_WINDOW_MANAGER"

    invoke-direct {v0, v1, v4}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_MULTITAPKEY_MANAGER"

    invoke-direct {v0, v1, v5}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_EDGE_WINDOW_MANAGER"

    invoke-direct {v0, v1, v6}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_AOD_WINDOW_MANAGER"

    invoke-direct {v0, v1, v7}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_REDUCE_SCREEN_MANAGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_REDUCE_SCREEN_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_HORIZONTAL_MODE_SERVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_HORIZONTAL_MODE_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_SAMSUNG_WINDOW_STATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_STATE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_MULTIWINDOW_PHONE_WINDOW_MANAGER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_SAMSUNG_STARTING_WINDOW_MANAGER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_STARTING_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_MULTIWINDOW_STACK_COLOR_LAYER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_STACK_COLOR_LAYER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_DSS_CONTROLLER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_DSS_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_TSP_STATE_MANAGER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    new-instance v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    const-string/jumbo v1, "TAG_PACKAGE_CONFIGURATION_CONTROLLER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/SamsungCoreServices$ServiceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_PACKAGE_CONFIGURATION_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/server/SamsungCoreServices$ServiceTag;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_REDUCE_SCREEN_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_HORIZONTAL_MODE_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_STATE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_STARTING_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_STACK_COLOR_LAYER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_DSS_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_PACKAGE_CONFIGURATION_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->$VALUES:[Lcom/android/server/SamsungCoreServices$ServiceTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SamsungCoreServices$ServiceTag;
    .locals 1

    const-class v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SamsungCoreServices$ServiceTag;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SamsungCoreServices$ServiceTag;
    .locals 1

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->$VALUES:[Lcom/android/server/SamsungCoreServices$ServiceTag;

    return-object v0
.end method
