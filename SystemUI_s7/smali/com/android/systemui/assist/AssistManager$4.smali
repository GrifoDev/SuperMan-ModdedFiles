.class Lcom/android/systemui/assist/AssistManager$4;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;

.field final synthetic val$assistanceAppAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$4;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager$4;->val$assistanceAppAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$4;->val$items:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$4;->val$assistanceAppAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$4;->val$assistanceAppAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
