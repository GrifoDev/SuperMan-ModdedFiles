.class Lcom/android/systemui/qs/QSDetail$1$5;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$1;->onUpdatingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$1;

.field final synthetic val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$1;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1$5;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$1$5;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$5;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$1$5;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->-wrap4(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    return-void
.end method
