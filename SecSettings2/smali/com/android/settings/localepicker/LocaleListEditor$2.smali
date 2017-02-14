.class Lcom/android/settings/localepicker/LocaleListEditor$2;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/LocaleListEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field feedsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->-wrap0(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->feedsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public checkLocaleIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->feedsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->feedsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public onStateReceived()V
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ChangeLanguage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor$2;->checkLocaleIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Language"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Language"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get1(Lcom/android/settings/localepicker/LocaleListEditor;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Language"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Language"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v3}, Lcom/android/settings/localepicker/LocaleListEditor;->-get2(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0
.end method
