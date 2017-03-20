.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;
.super Ljava/lang/Object;
.source "VoiceCallButtonVCCFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
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
    .param p1, "this$0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {p1, p3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_menu_getAction(Landroid/widget/AdapterView;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 778
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 779
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVRHierarchy(Ljava/lang/String;I)V

    .line 781
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v4, v8}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$902(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I

    .line 782
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mRunning:Z
    invoke-static {v4, v9}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1002(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)Z

    .line 783
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    const/16 v5, 0x20

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->lastChar:C
    invoke-static {v4, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1102(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 786
    .local v2, "callTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v2, v3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getCallPath(J)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1202(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    const-string v4, "smart_ivr_callerid_info"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 790
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    .line 792
    sget-boolean v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    if-nez v4, :cond_0

    .line 793
    sput-boolean v9, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Achintya wasIvrCall set to true wasIvrCall:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "api.getCallPath()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPath.length(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPath char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 801
    .end local v1    # "i":I
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 803
    .restart local v1    # "i":I
    :cond_2
    const-string v4, ""

    goto :goto_2

    .line 808
    .end local v1    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.incallui"

    const-string v6, "VCCC"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v8}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    .line 813
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I
    invoke-static {v4, v8}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1302(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I

    .line 815
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 866
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 874
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "callTime":J
    :cond_4
    :goto_3
    return-void

    .line 868
    :cond_5
    new-instance v4, Lcom/android/incallui/util/VisualCallCenter$IvrTask;

    invoke-direct {v4}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;-><init>()V

    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 869
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1400(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 870
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1400(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_3
.end method
