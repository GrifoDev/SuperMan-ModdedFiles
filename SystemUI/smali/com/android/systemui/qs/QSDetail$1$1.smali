.class Lcom/android/systemui/qs/QSDetail$1$1;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$1;->onToggleStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$1;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1$1;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSDetail$1$1;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$1;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v1, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSDetail$1$1;->val$state:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$1;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$1;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/systemui/qs/QSDetail;->-wrap3(Lcom/android/systemui/qs/QSDetail;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
