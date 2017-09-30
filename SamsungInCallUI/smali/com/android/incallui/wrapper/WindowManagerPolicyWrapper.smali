.class public Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;
.super Ljava/lang/Object;


# static fields
.field public static OFF_BECAUSE_OF_PROX_SENSOR:I = 0x0

.field public static OFF_BECAUSE_OF_USER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManagerPolicyWrapper"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I

    :try_start_0
    const-class v0, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;

    const-string v1, "OFF_BECAUSE_OF_USER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    const-class v0, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;

    const-string v1, "OFF_BECAUSE_OF_PROX_SENSOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WindowManagerPolicyWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OFF_BECAUSE_OF_USER/OFF_BECAUSE_OF_PROX_SENSOR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
