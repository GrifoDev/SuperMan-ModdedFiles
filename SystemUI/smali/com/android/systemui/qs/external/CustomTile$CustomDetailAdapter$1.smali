.class Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;->this$1:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;->this$1:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Custom tile remoteView click : collapsePanel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;->this$1:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/CustomTile;->showDetail(Z)V

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method
