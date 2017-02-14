.class final synthetic Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_checkPackageChanges_int_ownerUserId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$gonePackages:Ljava/util/ArrayList;

.field private synthetic val$ownerUserId:I

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$ownerUserId:I

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$gonePackages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$ownerUserId:I

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$gonePackages:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$12(ILjava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
