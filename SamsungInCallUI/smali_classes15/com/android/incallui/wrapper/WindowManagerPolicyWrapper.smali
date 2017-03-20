.class public Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;
.super Ljava/lang/Object;
.source "WindowManagerPolicyWrapper.java"


# static fields
.field public static OFF_BECAUSE_OF_PROX_SENSOR:I = 0x0

.field public static OFF_BECAUSE_OF_USER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManagerPolicyWrapper"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const/4 v1, 0x2

    sput v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    .line 26
    const/4 v1, 0x4

    sput v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I

    .line 30
    :try_start_0
    const-class v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;

    const-string v2, "OFF_BECAUSE_OF_USER"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    .line 31
    const-class v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;

    const-string v2, "OFF_BECAUSE_OF_PROX_SENSOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 33
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "WindowManagerPolicyWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OFF_BECAUSE_OF_USER/OFF_BECAUSE_OF_PROX_SENSOR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
