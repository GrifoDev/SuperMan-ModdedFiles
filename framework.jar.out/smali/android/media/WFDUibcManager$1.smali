.class Landroid/media/WFDUibcManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 111
    iput-object p1, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x6f

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intent received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const-string/jumbo v2, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    const-string/jumbo v2, "displayName"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "name":I
    iget-object v2, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    const-string/jumbo v3, "displayID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->-set2(Landroid/media/WFDUibcManager;I)I

    .line 120
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Presentation Display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1    # "name":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    :cond_2
    iget-object v2, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->-set0(Landroid/media/WFDUibcManager;Z)Z

    .line 128
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "SlideShow or Video playing with presentation : TRUE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    :goto_1
    return-void

    .line 121
    :cond_4
    const-string/jumbo v2, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const-string/jumbo v2, "displayName"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .restart local v1    # "name":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Presentation Display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v1    # "name":I
    :cond_5
    const-string/jumbo v2, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    :cond_6
    iget-object v2, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->-set0(Landroid/media/WFDUibcManager;Z)Z

    .line 131
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "SlideShow or Video playing with presentation : FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
