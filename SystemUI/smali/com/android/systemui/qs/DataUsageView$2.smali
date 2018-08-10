.class Lcom/android/systemui/qs/DataUsageView$2;
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

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->-wrap1(Lcom/android/systemui/qs/DataUsageView;)V

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$2;->this$0:Lcom/android/systemui/qs/DataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/DataUsageView;->-set1(Lcom/android/systemui/qs/DataUsageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
