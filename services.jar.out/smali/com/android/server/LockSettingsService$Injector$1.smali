.class Lcom/android/server/LockSettingsService$Injector$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsStorage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$Injector;->getStorage()Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$Injector;

.field final synthetic val$storage:Lcom/android/server/LockSettingsStorage;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$Injector;Lcom/android/server/LockSettingsStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$Injector$1;->this$1:Lcom/android/server/LockSettingsService$Injector;

    iput-object p2, p0, Lcom/android/server/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/LockSettingsStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "ro.lockscreen.disable.default"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v2, "lockscreen.disabled"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
