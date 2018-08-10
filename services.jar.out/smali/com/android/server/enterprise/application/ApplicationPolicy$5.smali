.class Lcom/android/server/enterprise/application/ApplicationPolicy$5;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->onAdminRemoved(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$uid:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$userId:I

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap17(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap13(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$uid:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap8(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap14(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    return-void
.end method
