.class Lcom/samsung/android/share/SShareSimpleSharing$2;
.super Landroid/content/BroadcastReceiver;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 107
    const-string/jumbo v4, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4, v8}, Lcom/samsung/android/share/SShareSimpleSharing;->-set2(Lcom/samsung/android/share/SShareSimpleSharing;I)I

    .line 111
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get6(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get6(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get5(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get5(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 117
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recentgroupdataids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v4, v4, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 122
    .restart local v0    # "i":I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recentgroupnamelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 123
    .local v2, "tmpGroupName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    .line 124
    const-string/jumbo v3, ""

    .line 126
    .local v3, "tmpName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_5

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get5(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v1    # "j":I
    .end local v3    # "tmpName":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get7(Lcom/samsung/android/share/SShareSimpleSharing;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupdataids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 139
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get2(Lcom/samsung/android/share/SShareSimpleSharing;)[J

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupcontactids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 140
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get3(Lcom/samsung/android/share/SShareSimpleSharing;)[I

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupcount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v0

    .line 142
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get6(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupthumbnail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get6(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 148
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get4(Lcom/samsung/android/share/SShareSimpleSharing;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/share/SShareSimpleSharing;->-set2(Lcom/samsung/android/share/SShareSimpleSharing;I)I

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 135
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/share/SShareSimpleSharing;->-set1(Lcom/samsung/android/share/SShareSimpleSharing;Z)Z

    .line 136
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing$2;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->-get5(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupnames"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
