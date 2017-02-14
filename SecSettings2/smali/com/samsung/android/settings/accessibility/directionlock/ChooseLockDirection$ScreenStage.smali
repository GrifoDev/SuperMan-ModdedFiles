.class final enum Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
.super Ljava/lang/Enum;
.source "ChooseLockDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScreenStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

.field public static final enum CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

.field public static final enum ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    const-string/jumbo v1, "ENTER_DIRECTION_SCREEN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    const-string/jumbo v1, "CONFIRM_DIRECTION_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->$VALUES:[Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->$VALUES:[Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    return-object v0
.end method
