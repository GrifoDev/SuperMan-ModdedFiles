.class Lcom/android/systemui/qs/QSDetail$1$2;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$1;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$1;

.field final synthetic val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$1;Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1$2;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iput p3, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$x:I

    iput p4, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$2;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget v2, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$x:I

    iget v3, p0, Lcom/android/systemui/qs/QSDetail$1$2;->val$y:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSDetail;->-wrap2(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V

    return-void
.end method
