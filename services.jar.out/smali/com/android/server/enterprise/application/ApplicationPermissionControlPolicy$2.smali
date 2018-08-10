.class Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$2;
.super Ljava/lang/Object;
.source "ApplicationPermissionControlPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->onPreAdminRemoval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->-wrap0(Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;Z)V

    return-void
.end method
