.class Landroid/app/AppOpsManager$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppOpsManager;

.field final synthetic val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method constructor <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppOpsManager;
    .param p2, "val$callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1505
    iput-object p1, p0, Landroid/app/AppOpsManager$1;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1507
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v0, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p3}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    .line 1510
    :cond_0
    invoke-static {}, Landroid/app/AppOpsManager;->-get0()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-static {}, Landroid/app/AppOpsManager;->-get0()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p3}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :cond_1
    return-void
.end method
