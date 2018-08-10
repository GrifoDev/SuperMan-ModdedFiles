.class Lcom/android/systemui/qs/QSDetail$1$2;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$1;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$1;

.field final synthetic val$collapsePanel:Z

.field final synthetic val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$1;Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1$2;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput p3, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$x:I

    iput p4, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$y:I

    iput-boolean p5, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$collapsePanel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$2;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget v2, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$x:I

    iget v3, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$y:I

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$collapsePanel:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$2;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get0(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/bar/QSBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$2;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get0(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/bar/QSBarController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/QSBarController;->onShowingDetail(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
