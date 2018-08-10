.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updatePermissionStatesAndFlagsInternal(Ljava/lang/String;Ljava/util/List;IIIIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$appId:I

.field final synthetic val$appOp:I

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$appId:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$appOp:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$appId:I

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$appOp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$appOp:I

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$appOp:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$appId:I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    const-string/jumbo v6, "Permission related app op changed"

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap46(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
