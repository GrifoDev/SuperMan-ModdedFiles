.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ivrScreenRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$400(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$500(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    return-void
.end method
