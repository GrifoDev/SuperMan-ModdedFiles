.class Lcom/android/systemui/globalactions/GlobalActionsDialog$39;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSimReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$39;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get64()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set20(Z)Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$39;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set2(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
