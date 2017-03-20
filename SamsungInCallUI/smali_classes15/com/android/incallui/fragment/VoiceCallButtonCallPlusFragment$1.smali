.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "VoiceCallButtonCallPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    const-string v0, "onReceive mCallPlusReceiver"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 267
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->queryForCallPlusEntrypoint()V
    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    .line 268
    return-void
.end method
