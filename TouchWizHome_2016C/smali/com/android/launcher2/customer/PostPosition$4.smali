.class Lcom/android/launcher2/customer/PostPosition$4;
.super Ljava/lang/Object;
.source "PostPosition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/customer/PostPosition;->retryWidgetAdd(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/customer/PostPosition;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

.field final synthetic val$model:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$user:Lcom/android/launcher2/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition$4;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iput-object p2, p0, Lcom/android/launcher2/customer/PostPosition$4;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    iput-object p3, p0, Lcom/android/launcher2/customer/PostPosition$4;->val$cn:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/launcher2/customer/PostPosition$4;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object p5, p0, Lcom/android/launcher2/customer/PostPosition$4;->val$model:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/customer/PostPosition$4$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/customer/PostPosition$4$1;-><init>(Lcom/android/launcher2/customer/PostPosition$4;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$4;->val$model:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
