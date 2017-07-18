.class Lcom/android/incallui/InCallActivity$32;
.super Lcom/android/incallui/service/vt/ContentViewListener;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->registerContentViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$32;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0, p2}, Lcom/android/incallui/service/vt/ContentViewListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onContentsViewChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$32;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v0, v0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->onContentsViewChanged(II)V

    return-void
.end method
