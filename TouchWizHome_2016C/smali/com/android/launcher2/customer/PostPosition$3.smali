.class Lcom/android/launcher2/customer/PostPosition$3;
.super Ljava/lang/Object;
.source "PostPosition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/customer/PostPosition;->runHomeAdd(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/customer/PostPosition;

.field final synthetic val$fInfo:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

.field final synthetic val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

.field final synthetic val$user:Lcom/android/launcher2/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition$3;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iput-object p2, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$fInfo:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iput-object p3, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$3;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$fInfo:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    # invokes: Lcom/android/launcher2/customer/PostPosition;->homeAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/customer/PostPosition;->access$200(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$3;->this$0:Lcom/android/launcher2/customer/PostPosition;

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$fInfo:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition$3;->val$itemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    # invokes: Lcom/android/launcher2/customer/PostPosition;->appsAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/customer/PostPosition;->access$300(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    return-void
.end method
