.class Lcom/pekaka/systemui/killer/MemCleanView$2;
.super Ljava/lang/Object;
.source "MemCleanView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pekaka/systemui/killer/MemCleanView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pekaka/systemui/killer/MemCleanView;


# direct methods
.method constructor <init>(Lcom/pekaka/systemui/killer/MemCleanView;)V
    .locals 0

    iput-object p1, p0, Lcom/pekaka/systemui/killer/MemCleanView$2;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView$2;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-static {v0}, Lcom/pekaka/systemui/killer/MemCleanView;->access$200(Lcom/pekaka/systemui/killer/MemCleanView;)Lcom/pekaka/systemui/killer/MemInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView$2;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-static {v1}, Lcom/pekaka/systemui/killer/MemCleanView;->access$100(Lcom/pekaka/systemui/killer/MemCleanView;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/pekaka/systemui/killer/MemInfo;->setAvi(J)V

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView$2;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-static {v0}, Lcom/pekaka/systemui/killer/MemCleanView;->access$000(Lcom/pekaka/systemui/killer/MemCleanView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView$2;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-static {v1}, Lcom/pekaka/systemui/killer/MemCleanView;->access$300(Lcom/pekaka/systemui/killer/MemCleanView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
