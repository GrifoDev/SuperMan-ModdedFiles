.class Lcom/android/systemui/qs/QSDetail$1;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetail$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$1$3;-><init>(Lcom/android/systemui/qs/QSDetail$1;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScrollToDetail(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/qs/QSDetail$1$5;-><init>(Lcom/android/systemui/qs/QSDetail$1;II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v0, Lcom/android/systemui/qs/QSDetail$1$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSDetail$1$2;-><init>(Lcom/android/systemui/qs/QSDetail$1;Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$1$1;-><init>(Lcom/android/systemui/qs/QSDetail$1;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$1$4;-><init>(Lcom/android/systemui/qs/QSDetail$1;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
