.class Lcom/android/server/policy/GlobalActions$45;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, p0, Lcom/android/server/policy/GlobalActions$45;->mSubId:I

    invoke-static {v4, v5}, Lcom/android/server/policy/GlobalActions;->-wrap11(Lcom/android/server/policy/GlobalActions;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mHasTelephony : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceStateChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " MSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    aput v5, v4, v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get47(Lcom/android/server/policy/GlobalActions;)I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v7}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v9}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v0}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v4

    aget v4, v4, v0

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v4

    aget v4, v4, v7

    if-ne v4, v8, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v4

    aget v4, v4, v7

    if-ne v4, v8, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    :goto_2
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " inAirplaneModeOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v2, :cond_8

    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    if-eqz v1, :cond_a

    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_3
    invoke-static {v5, v4}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mAirplaneState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$45;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void

    :cond_a
    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_3
.end method
