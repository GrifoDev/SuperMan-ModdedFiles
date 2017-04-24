.class Lcom/android/incallui/InCallActivity$9;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->sendDtmf(CI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$callId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    iput-object p2, p0, Lcom/android/incallui/InCallActivity$9;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$9;->val$callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method
