.class Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;
.super Landroid/os/AsyncTask;
.source "AuthnHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcc/sso/sdk/auth/AuthnHelper;->tryNativeMail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;


# direct methods
.method constructor <init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    .line 84
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    const/4 v4, 0x0

    .line 98
    .local v4, "nativeMailActSdk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "cn.richinfo.automail.NativeMailActivationSDK"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 105
    if-eqz v4, :cond_0

    .line 107
    :try_start_2
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 109
    .local v1, "gi":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 110
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    .local v3, "instance":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 113
    const-string v5, "init"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 114
    .local v2, "init":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    iget-object v7, v7, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v5, "+++init NativeMailActivationSDK success+++"

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    .end local v1    # "gi":Ljava/lang/reflect/Method;
    .end local v2    # "init":Ljava/lang/reflect/Method;
    .end local v3    # "instance":Ljava/lang/Object;
    :goto_1
    return-object v9

    .line 91
    .end local v4    # "nativeMailActSdk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "++fail to call Looper.prepare++"

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v4    # "nativeMailActSdk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v5, "++load class cn.richinfo.automail.NativeMailActivationSDK failed++"

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x0

    .line 102
    goto :goto_1

    .line 120
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 121
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v5, "+++init NativeMailActivationSDK failed+++"

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const-string v5, "+++init NativeMailActivationSDK failed+++"

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
