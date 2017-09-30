.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_ivrSelectMenu(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {p1, p3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_menu_getAction(Landroid/widget/AdapterView;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVRHierarchy(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v2, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1002(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v2, v6}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1102(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)Z

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1202(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;C)C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callTime"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v2, v3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getCallPath(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1302(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    sget-boolean v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    if-nez v0, :cond_0

    sput-boolean v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achintya wasIvrCall set to true wasIvrCall:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api.getCallPath()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPath.length(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callPath char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.incallui"

    const-string v3, "VCCC"

    invoke-static {v0, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_ivrSelectFinal()V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v1}, Lcom/android/incallui/util/VisualCallCenter;->setDisplayIVRPager(Z)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0, v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1402(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4$1;-><init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    new-instance v0, Lcom/android/incallui/util/VisualCallCenter$IvrTask;

    invoke-direct {v0}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;-><init>()V

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$4;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_3
.end method
