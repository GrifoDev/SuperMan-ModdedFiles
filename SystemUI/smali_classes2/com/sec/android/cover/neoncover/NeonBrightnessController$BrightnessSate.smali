.class public final enum Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;
.super Ljava/lang/Enum;
.source "NeonBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrightnessSate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

.field public static final enum BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

.field public static final enum DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

.field public static final enum NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    const-string/jumbo v1, "DARK"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    const-string/jumbo v1, "BRIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->$VALUES:[Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;
    .locals 1

    const-class v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->$VALUES:[Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    return-object v0
.end method
