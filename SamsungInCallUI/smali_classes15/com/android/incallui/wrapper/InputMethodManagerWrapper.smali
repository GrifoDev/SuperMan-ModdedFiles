.class public Lcom/android/incallui/wrapper/InputMethodManagerWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.view.inputmethod.InputMethodManager"

.field private static final LOG_TAG:Ljava/lang/String; = "InputMethodManagerWrapper"

.field private static baseClass:Ljava/lang/Class;

.field private static sMethodFocusIn:Ljava/lang/reflect/Method;

.field private static sMethodFocusOut:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->baseClass:Ljava/lang/Class;

    .line 35
    const-string v0, "android.view.inputmethod.InputMethodManager"

    invoke-static {v0}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->baseClass:Ljava/lang/Class;

    .line 37
    sget-object v0, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->baseClass:Ljava/lang/Class;

    const-string v1, "focusIn"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->sMethodFocusIn:Ljava/lang/reflect/Method;

    .line 38
    sget-object v0, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->baseClass:Ljava/lang/Class;

    const-string v1, "focusOut"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->sMethodFocusOut:Ljava/lang/reflect/Method;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static focusIn(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 4
    .param p0, "instance"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    sget-object v1, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->sMethodFocusIn:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    const-string v1, "InputMethodManagerWrapper"

    const-string v2, "sMethodFocusIn or view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->sMethodFocusIn:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "InputMethodManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to focusIn invoke : "

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

    .line 49
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static focusOut(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 4
    .param p0, "instance"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    sget-object v1, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->sMethodFocusOut:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    const-string v1, "InputMethodManagerWrapper"

    const-string v2, "sMethodFocusOut or view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->sMethodFocusOut:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "InputMethodManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to focusOut invoke : "

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

    .line 62
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
