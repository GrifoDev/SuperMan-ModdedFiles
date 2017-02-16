.class Lcom/android/systemui/qs/DataUsageView$1;
.super Ljava/lang/Object;
.source "DataUsageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/DataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/DataUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/DataUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "DataUsageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Data Usage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v2}, Lcom/android/systemui/qs/DataUsageView;->-get2(Lcom/android/systemui/qs/DataUsageView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->-get2(Lcom/android/systemui/qs/DataUsageView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v1}, Lcom/android/systemui/qs/DataUsageView;->-get2(Lcom/android/systemui/qs/DataUsageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v0, v3}, Lcom/android/systemui/qs/DataUsageView;->-set1(Lcom/android/systemui/qs/DataUsageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
