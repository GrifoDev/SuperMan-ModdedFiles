.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$6;
.super Ljava/lang/Object;
.source "VoiceCallButtonVCCFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getIvrList()V
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

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$6;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "run() getIvrList()"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$6;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->format:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1500(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getMenuPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/incallui/util/VisualCallCenter$IvrTask;

    invoke-direct {v2}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;-><init>()V

    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, -0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/incallui/util/VisualCallCenter$IvrTask;

    invoke-direct {v2}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;-><init>()V

    new-array v3, v4, [Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const-string v2, "getIvrList() no data"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
