.class public Lcom/android/incallui/wrapper/UserManagerWrapper;
.super Ljava/lang/Object;
.source "UserManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserManagerWrapper"

.field private static mInstance:Landroid/os/UserManager;

.field private static sMethodGetUsers:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/wrapper/UserManagerWrapper;->mInstance:Landroid/os/UserManager;

    const-class v0, Landroid/os/UserManager;

    const-string v1, "getUsers"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/UserManagerWrapper;->sMethodGetUsers:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>(Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/incallui/wrapper/UserManagerWrapper;->mInstance:Landroid/os/UserManager;

    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;
    .locals 2

    new-instance v1, Lcom/android/incallui/wrapper/UserManagerWrapper;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-direct {v1, v0}, Lcom/android/incallui/wrapper/UserManagerWrapper;-><init>(Landroid/os/UserManager;)V

    return-object v1
.end method


# virtual methods
.method public getUsers(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/wrapper/UserInfoWrapper;",
            ">;"
        }
    .end annotation

    sget-object v6, Lcom/android/incallui/wrapper/UserManagerWrapper;->sMethodGetUsers:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/incallui/wrapper/UserManagerWrapper;->mInstance:Landroid/os/UserManager;

    if-nez v6, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    return-object v5

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    sget-object v6, Lcom/android/incallui/wrapper/UserManagerWrapper;->sMethodGetUsers:Ljava/lang/reflect/Method;

    sget-object v7, Lcom/android/incallui/wrapper/UserManagerWrapper;->mInstance:Landroid/os/UserManager;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v2, Lcom/android/incallui/wrapper/UserInfoWrapper;

    invoke-direct {v2, v3}, Lcom/android/incallui/wrapper/UserInfoWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    const-string v6, "UserManagerWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to invoke : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method
