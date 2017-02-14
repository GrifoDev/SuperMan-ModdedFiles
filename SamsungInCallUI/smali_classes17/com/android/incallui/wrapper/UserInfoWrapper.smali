.class public Lcom/android/incallui/wrapper/UserInfoWrapper;
.super Ljava/lang/Object;
.source "UserInfoWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.content.pm.UserInfo"

.field private static final TAG:Ljava/lang/String; = "UserInfoWrapper"

.field private static idField:Ljava/lang/reflect/Field;

.field private static sMethodGetUserHandler:Ljava/lang/reflect/Method;

.field private static sMethodIsBMode:Ljava/lang/reflect/Method;

.field private static sMethodIsKnoxWorkspace:Ljava/lang/reflect/Method;

.field private static sMethodIsManagedProfile:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "android.content.pm.UserInfo"

    invoke-static {v1}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isBMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsBMode:Ljava/lang/reflect/Method;

    const-string v1, "getUserHandle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodGetUserHandler:Ljava/lang/reflect/Method;

    const-string v1, "isManagedProfile"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsManagedProfile:Ljava/lang/reflect/Method;

    const-string v1, "isKnoxWorkspace"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsKnoxWorkspace:Ljava/lang/reflect/Method;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->idField:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->idField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/wrapper/UserInfoWrapper;->idField:Ljava/lang/reflect/Field;

    invoke-static {v1, v2, v3}, Lcom/android/incallui/wrapper/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 5

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodGetUserHandler:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodGetUserHandler:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "UserInfoWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isBMode()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsBMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsBMode:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "UserInfoWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isKnoxWorkspace()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsKnoxWorkspace:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsKnoxWorkspace:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "UserInfoWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isManagedProfile()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsManagedProfile:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/UserInfoWrapper;->sMethodIsManagedProfile:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/UserInfoWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "UserInfoWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
