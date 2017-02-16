.class public Lcom/android/incallui/wrapper/StatusBarManagerWrapper;
.super Ljava/lang/Object;
.source "StatusBarManagerWrapper.java"


# static fields
.field public static final CALL_BACKGROUND_ENDED:I

.field private static final CALL_BACKGROUND_ENDED_DEFAULT:I = 0x2

.field public static final CALL_BACKGROUND_IDLE:I

.field private static final CALL_BACKGROUND_IDLE_DEFAULT:I = 0x0

.field public static final CALL_BACKGROUND_NORMAL:I

.field private static final CALL_BACKGROUND_NORMAL_DEFAULT:I = 0x1

.field public static final CALL_BACKGROUND_ONHOLD:I

.field private static final CALL_BACKGROUND_ONHOLD_DEFAULT:I = 0x3

.field private static final CLASS_PATH:Ljava/lang/String; = "android.app.StatusBarManager"

.field public static final DISABLE_EXPAND:I

.field private static final DISABLE_EXPAND_DEFAULT:I = 0x10000

.field public static final DISABLE_NONE:I

.field private static final DISABLE_NONE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerWrapper"

.field private static sMethodCollapsePanels:Ljava/lang/reflect/Method;

.field private static sMethodDisable:Ljava/lang/reflect/Method;

.field private static sMethodExpandNotificationsPanel:Ljava/lang/reflect/Method;

.field private static sMethodRequestStatusBarOpen:Ljava/lang/reflect/Method;

.field private static sMethodSetCallBackground:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 42
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "baseClass":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 45
    .local v2, "field":Ljava/lang/reflect/Field;
    const-string v4, "CALL_BACKGROUND_IDLE"

    invoke-static {v0, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    const/4 v3, 0x0

    .line 49
    .local v3, "fieldValue":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 54
    :goto_0
    sput v3, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_IDLE:I

    .line 59
    .end local v3    # "fieldValue":I
    :goto_1
    const-string v4, "CALL_BACKGROUND_NORMAL"

    invoke-static {v0, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    const/4 v3, 0x0

    .line 63
    .restart local v3    # "fieldValue":I
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 68
    :goto_2
    sput v3, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_NORMAL:I

    .line 73
    .end local v3    # "fieldValue":I
    :goto_3
    const-string v4, "CALL_BACKGROUND_ENDED"

    invoke-static {v0, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    const/4 v3, 0x0

    .line 77
    .restart local v3    # "fieldValue":I
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 82
    :goto_4
    sput v3, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_ENDED:I

    .line 87
    .end local v3    # "fieldValue":I
    :goto_5
    const-string v4, "CALL_BACKGROUND_ONHOLD"

    invoke-static {v0, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    const/4 v3, 0x0

    .line 91
    .restart local v3    # "fieldValue":I
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 96
    :goto_6
    sput v3, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_ONHOLD:I

    .line 101
    .end local v3    # "fieldValue":I
    :goto_7
    const-string v4, "DISABLE_NONE"

    invoke-static {v0, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_4

    .line 103
    const/4 v3, 0x0

    .line 105
    .restart local v3    # "fieldValue":I
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    .line 110
    :goto_8
    sput v3, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_NONE:I

    .line 116
    .end local v3    # "fieldValue":I
    :goto_9
    const-string v4, "DISABLE_EXPAND"

    invoke-static {v0, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_5

    .line 118
    const/4 v3, 0x0

    .line 120
    .restart local v3    # "fieldValue":I
    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v3

    .line 125
    :goto_a
    sput v3, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_EXPAND:I

    .line 131
    .end local v3    # "fieldValue":I
    :goto_b
    const-string v4, "requestStatusBarOpen"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodRequestStatusBarOpen:Ljava/lang/reflect/Method;

    .line 132
    const-string v4, "setCallBackground"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodSetCallBackground:Ljava/lang/reflect/Method;

    .line 133
    const-string v4, "collapsePanels"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodCollapsePanels:Ljava/lang/reflect/Method;

    .line 134
    const-string v4, "expandNotificationsPanel"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodExpandNotificationsPanel:Ljava/lang/reflect/Method;

    .line 135
    const-string v4, "disable"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodDisable:Ljava/lang/reflect/Method;

    .line 136
    return-void

    .line 50
    .restart local v3    # "fieldValue":I
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBarManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get field value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "fieldValue":I
    :cond_0
    sput v7, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_IDLE:I

    goto/16 :goto_1

    .line 64
    .restart local v3    # "fieldValue":I
    :catch_1
    move-exception v1

    .line 65
    .restart local v1    # "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBarManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get field value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 70
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "fieldValue":I
    :cond_1
    sput v8, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_NORMAL:I

    goto/16 :goto_3

    .line 78
    .restart local v3    # "fieldValue":I
    :catch_2
    move-exception v1

    .line 79
    .restart local v1    # "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBarManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get field value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v3, 0x2

    goto/16 :goto_4

    .line 84
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "fieldValue":I
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_ENDED:I

    goto/16 :goto_5

    .line 92
    .restart local v3    # "fieldValue":I
    :catch_3
    move-exception v1

    .line 93
    .restart local v1    # "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBarManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get field value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 98
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "fieldValue":I
    :cond_3
    const/4 v4, 0x3

    sput v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->CALL_BACKGROUND_ONHOLD:I

    goto/16 :goto_7

    .line 106
    .restart local v3    # "fieldValue":I
    :catch_4
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBarManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get field value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 112
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "fieldValue":I
    :cond_4
    sput v7, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_NONE:I

    goto/16 :goto_9

    .line 121
    .restart local v3    # "fieldValue":I
    :catch_5
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBarManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get field value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/high16 v3, 0x10000

    goto/16 :goto_a

    .line 127
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "fieldValue":I
    :cond_5
    const/high16 v4, 0x10000

    sput v4, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_EXPAND:I

    goto/16 :goto_b
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/StatusBarManagerWrapper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    new-instance v0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    sget-object v1, Lcom/android/incallui/wrapper/ContextWrapper;->STATUS_BAR_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 4

    .prologue
    .line 171
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodCollapsePanels:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodCollapsePanels:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "StatusBarManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public disable(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 195
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodDisable:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodDisable:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "StatusBarManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public expandNotificationsPanel()V
    .locals 4

    .prologue
    .line 183
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodExpandNotificationsPanel:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodExpandNotificationsPanel:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "StatusBarManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public requestStatusBarOpen()V
    .locals 4

    .prologue
    .line 147
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodRequestStatusBarOpen:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodRequestStatusBarOpen:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "StatusBarManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setCallBackground(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 159
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodSetCallBackground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->sMethodSetCallBackground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->mInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "StatusBarManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
