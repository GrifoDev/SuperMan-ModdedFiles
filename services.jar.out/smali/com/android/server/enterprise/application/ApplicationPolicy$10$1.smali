.class Lcom/android/server/enterprise/application/ApplicationPolicy$10$1;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$10;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$10;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$10;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$10;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap7(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method
