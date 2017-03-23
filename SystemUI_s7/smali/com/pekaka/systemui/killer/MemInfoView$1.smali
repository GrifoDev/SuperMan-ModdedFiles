.class Lcom/pekaka/systemui/killer/MemInfoView$1;
.super Ljava/lang/Object;
.source "MemInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pekaka/systemui/killer/MemInfoView;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pekaka/systemui/killer/MemInfoView;

.field final synthetic val$info:Lcom/pekaka/systemui/killer/MemInfo;


# direct methods
.method constructor <init>(Lcom/pekaka/systemui/killer/MemInfoView;Lcom/pekaka/systemui/killer/MemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->this$0:Lcom/pekaka/systemui/killer/MemInfoView;

    iput-object p2, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->val$info:Lcom/pekaka/systemui/killer/MemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v5, 0x64

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->val$info:Lcom/pekaka/systemui/killer/MemInfo;

    invoke-virtual {v0}, Lcom/pekaka/systemui/killer/MemInfo;->getAvi()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->this$0:Lcom/pekaka/systemui/killer/MemInfoView;

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->val$info:Lcom/pekaka/systemui/killer/MemInfo;

    invoke-virtual {v1}, Lcom/pekaka/systemui/killer/MemInfo;->getAvi()J

    move-result-wide v1

    mul-long/2addr v1, v5

    iget-object v3, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->val$info:Lcom/pekaka/systemui/killer/MemInfo;

    iget-wide v3, v3, Lcom/pekaka/systemui/killer/MemInfo;->total:J

    div-long/2addr v1, v3

    sub-long v1, v5, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/pekaka/systemui/killer/MemInfoView;->setPercent(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->this$0:Lcom/pekaka/systemui/killer/MemInfoView;

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->val$info:Lcom/pekaka/systemui/killer/MemInfo;

    invoke-virtual {v1}, Lcom/pekaka/systemui/killer/MemInfo;->getAvi()J

    move-result-wide v1

    mul-long/2addr v1, v5

    iget-object v3, p0, Lcom/pekaka/systemui/killer/MemInfoView$1;->val$info:Lcom/pekaka/systemui/killer/MemInfo;

    iget-wide v3, v3, Lcom/pekaka/systemui/killer/MemInfo;->total:J

    div-long/2addr v1, v3

    add-long/2addr v1, v5

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/pekaka/systemui/killer/MemInfoView;->setPercentNoAnimation(I)V

    goto :goto_0
.end method
