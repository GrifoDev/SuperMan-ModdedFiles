.class Lcom/android/launcher2/LauncherModel$LoaderTask$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher2/AppWidgetBinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(I)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

.field final synthetic val$launcherActivity:Lcom/android/launcher2/Launcher;

.field final synthetic val$newIntent:Landroid/content/Intent;

.field final synthetic val$pageItemIdsMap:Ljava/util/HashMap;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Landroid/content/Intent;Ljava/util/HashMap;Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$widgets:Landroid/appwidget/AppWidgetManager;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$newIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$pageItemIdsMap:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$launcherActivity:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .locals 3

    const-string v0, "Launcher.Model"

    const-string v1, "Problem binding widget. This should only happen when installed outside of /system/app and user declined authorization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$launcherActivity:Lcom/android/launcher2/Launcher;

    const-string v1, "Not installed with permissions needed for binding widgets and authorization declined"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onBindSuccess(I)V
    .locals 6

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBindSuccess. appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$widgets:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-wide v4, v3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    iput-wide v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget v3, v3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget v3, v3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellX:I

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget v3, v3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellY:I

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget v3, v3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanX:I

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget v3, v3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanY:I

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-wide v4, v3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    iput-wide v4, v0, Lcom/android/launcher2/HomeWidgetItem;->container:J

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "intent"

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$newIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-wide v4, v4, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    invoke-static {v3, v4, v5, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-wide v4, v4, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$pageItemIdsMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$favoriteValue:Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-wide v4, v4, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
