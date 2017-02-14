.class Lcom/android/launcher2/customer/PostPosition$4$1;
.super Ljava/lang/Object;
.source "PostPosition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/customer/PostPosition$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/customer/PostPosition$4;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/PostPosition$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition$4$1;->this$1:Lcom/android/launcher2/customer/PostPosition$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$4$1;->this$1:Lcom/android/launcher2/customer/PostPosition$4;

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition$4;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->updateResult(Z)V

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$4$1;->this$1:Lcom/android/launcher2/customer/PostPosition$4;

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition$4;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$4$1;->this$1:Lcom/android/launcher2/customer/PostPosition$4;

    iget-object v1, v1, Lcom/android/launcher2/customer/PostPosition$4;->val$cn:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$4$1;->this$1:Lcom/android/launcher2/customer/PostPosition$4;

    iget-object v2, v2, Lcom/android/launcher2/customer/PostPosition$4;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition$4$1;->this$1:Lcom/android/launcher2/customer/PostPosition$4;

    iget-object v3, v3, Lcom/android/launcher2/customer/PostPosition$4;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    # invokes: Lcom/android/launcher2/customer/PostPosition;->addToHomeWidget(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/customer/PostPosition;->access$100(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    return-void
.end method
