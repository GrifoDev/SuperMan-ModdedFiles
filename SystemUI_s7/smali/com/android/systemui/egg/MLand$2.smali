.class Lcom/android/systemui/egg/MLand$2;
.super Ljava/lang/Object;
.source "MLand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;

.field final synthetic val$playText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$2;->this$0:Lcom/android/systemui/egg/MLand;

    iput-object p2, p0, Lcom/android/systemui/egg/MLand$2;->val$playText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$2;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->-get1(Lcom/android/systemui/egg/MLand;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$2;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->startPlaying()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$2;->val$playText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand$2;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-static {v1}, Lcom/android/systemui/egg/MLand;->-get1(Lcom/android/systemui/egg/MLand;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$2;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->-get1(Lcom/android/systemui/egg/MLand;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->-set0(Lcom/android/systemui/egg/MLand;I)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$2;->this$0:Lcom/android/systemui/egg/MLand;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/systemui/egg/MLand;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
