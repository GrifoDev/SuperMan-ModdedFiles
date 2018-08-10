.class public final enum Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
.super Ljava/lang/Enum;
.source "KeyguardVideoWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field public static final enum BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field public static final enum HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field public static final enum LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const-string/jumbo v1, "BLACK"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const-string/jumbo v1, "LOCK"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->$VALUES:[Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->$VALUES:[Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-object v0
.end method
