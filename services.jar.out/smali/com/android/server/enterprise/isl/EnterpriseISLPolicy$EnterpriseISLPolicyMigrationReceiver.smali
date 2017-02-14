.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseISLPolicyMigrationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EnterpriseISLPolicyMigrationReceiver onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get10(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "migrationIMFlag"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v1, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap8(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Z)V

    return-void
.end method
