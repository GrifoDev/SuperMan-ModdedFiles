.class Lcom/android/incallui/InCallActivity$32;
.super Lcom/android/incallui/InCallContentViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->registerInCallContentViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$32;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/incallui/InCallContentViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentViewChange(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$32;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0, p1}, Lcom/android/incallui/InCallActivity;->access$2002(Lcom/android/incallui/InCallActivity;I)I

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$32;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0, p2}, Lcom/android/incallui/InCallActivity;->access$2102(Lcom/android/incallui/InCallActivity;I)I

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallNotifier;->notifyInCallContentViewChange(II)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$32;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    return-void
.end method
