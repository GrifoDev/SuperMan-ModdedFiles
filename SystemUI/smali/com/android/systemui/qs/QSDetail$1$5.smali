.class Lcom/android/systemui/qs/QSDetail$1$5;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$1;->onScrollToDetail(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$1;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1$5;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iput p2, p0, Lcom/android/systemui/qs/QSDetail$1$5;->val$x:I

    iput p3, p0, Lcom/android/systemui/qs/QSDetail$1$5;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$5;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget v1, p0, Lcom/android/systemui/qs/QSDetail$1$5;->val$x:I

    iget v2, p0, Lcom/android/systemui/qs/QSDetail$1$5;->val$y:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QSDetail;->-wrap2(Lcom/android/systemui/qs/QSDetail;II)V

    return-void
.end method
