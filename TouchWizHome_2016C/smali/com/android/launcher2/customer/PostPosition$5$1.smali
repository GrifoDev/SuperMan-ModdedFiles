.class Lcom/android/launcher2/customer/PostPosition$5$1;
.super Ljava/lang/Object;
.source "PostPosition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/customer/PostPosition$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/customer/PostPosition$5;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/PostPosition$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition$5$1;->this$1:Lcom/android/launcher2/customer/PostPosition$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$5$1;->this$1:Lcom/android/launcher2/customer/PostPosition$5;

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition$5;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$5$1;->this$1:Lcom/android/launcher2/customer/PostPosition$5;

    iget-object v1, v1, Lcom/android/launcher2/customer/PostPosition$5;->val$info:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$5$1;->this$1:Lcom/android/launcher2/customer/PostPosition$5;

    iget-object v2, v2, Lcom/android/launcher2/customer/PostPosition$5;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition$5$1;->this$1:Lcom/android/launcher2/customer/PostPosition$5;

    iget-wide v4, v3, Lcom/android/launcher2/customer/PostPosition$5;->val$fId:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;J)V

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$5$1;->this$1:Lcom/android/launcher2/customer/PostPosition$5;

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition$5;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->updateResult(Z)V

    return-void
.end method
