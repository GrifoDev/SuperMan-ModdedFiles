.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;
.super Ljava/lang/Object;
.source "VoiceCallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoWifiStateChanged(Z)V
    .locals 1
    .param p1, "isRegistered"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # setter for: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z
    invoke-static {v0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$002(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Z)Z

    .line 170
    return-void
.end method
