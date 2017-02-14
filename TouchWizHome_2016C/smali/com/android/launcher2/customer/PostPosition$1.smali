.class Lcom/android/launcher2/customer/PostPosition$1;
.super Ljava/lang/Object;
.source "PostPosition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/customer/PostPosition;->run(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/customer/PostPosition;

.field final synthetic val$cmpName:Landroid/content/ComponentName;

.field final synthetic val$user:Lcom/android/launcher2/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition$1;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iput-object p2, p0, Lcom/android/launcher2/customer/PostPosition$1;->val$cmpName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher2/customer/PostPosition$1;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$1;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$1;->val$cmpName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$1;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    # invokes: Lcom/android/launcher2/customer/PostPosition;->execute(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/customer/PostPosition;->access$000(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method
