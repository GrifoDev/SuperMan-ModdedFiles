.class Lcom/android/server/policy/ReduceScreenManager$2;
.super Ljava/lang/Object;
.source "ReduceScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ReduceScreenManager;->startService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ReduceScreenManager;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/ReduceScreenManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager$2;->this$0:Lcom/android/server/policy/ReduceScreenManager;

    iput p2, p0, Lcom/android/server/policy/ReduceScreenManager$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.easyonehand"

    const-string/jumbo v5, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "StartByHomeKey"

    iget v5, p0, Lcom/android/server/policy/ReduceScreenManager$2;->val$reason:I

    if-ne v5, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/ReduceScreenManager$2;->this$0:Lcom/android/server/policy/ReduceScreenManager;

    invoke-static {v3}, Lcom/android/server/policy/ReduceScreenManager;->-get0(Lcom/android/server/policy/ReduceScreenManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
