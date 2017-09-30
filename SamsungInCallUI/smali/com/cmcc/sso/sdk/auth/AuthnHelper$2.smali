.class Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;
.super Landroid/os/AsyncTask;


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

    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "cn.richinfo.automail.NativeMailActivationSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_2
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    iget-object v4, v4, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "+++init NativeMailActivationSDK success+++"

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-object v6

    :catch_0
    move-exception v0

    const-string v0, "++fail to call Looper.prepare++"

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "++load class cn.richinfo.automail.NativeMailActivationSDK failed++"

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "+++init NativeMailActivationSDK failed+++"

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "+++init NativeMailActivationSDK failed+++"

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
