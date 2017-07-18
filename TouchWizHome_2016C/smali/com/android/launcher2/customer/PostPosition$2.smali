.class Lcom/android/launcher2/customer/PostPosition$2;
.super Ljava/lang/Object;
.source "PostPosition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/customer/PostPosition;->runHomeWidgetAdd(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/customer/PostPosition;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

.field final synthetic val$user:Lcom/android/launcher2/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition$2;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iput-object p2, p0, Lcom/android/launcher2/customer/PostPosition$2;->val$cn:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher2/customer/PostPosition$2;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/android/launcher2/customer/PostPosition$2;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$2;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$2;->val$cn:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$2;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition$2;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/customer/PostPosition;->access$100(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$2;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->updateResult(Z)V

    return-void
.end method
