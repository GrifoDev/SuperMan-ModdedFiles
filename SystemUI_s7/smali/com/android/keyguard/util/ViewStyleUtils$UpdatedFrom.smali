.class public final enum Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;
.super Ljava/lang/Enum;
.source "ViewStyleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/ViewStyleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdatedFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

.field public static final enum Theme:Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

.field public static final enum WhiteWallpaper:Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    const-string/jumbo v1, "Theme"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;->Theme:Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    new-instance v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    const-string/jumbo v1, "WhiteWallpaper"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;->WhiteWallpaper:Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    sget-object v1, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;->Theme:Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;->WhiteWallpaper:Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;->$VALUES:[Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;
    .locals 1

    const-class v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;
    .locals 1

    sget-object v0, Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;->$VALUES:[Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    return-object v0
.end method
