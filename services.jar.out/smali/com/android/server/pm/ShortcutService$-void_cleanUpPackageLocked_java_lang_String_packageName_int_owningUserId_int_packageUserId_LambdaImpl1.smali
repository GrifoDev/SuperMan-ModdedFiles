.class final synthetic Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl1;
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
    name = "-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl1;->val$this:Lcom/android/server/pm/ShortcutService;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl1;->val$this:Lcom/android/server/pm/ShortcutService;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$11(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
