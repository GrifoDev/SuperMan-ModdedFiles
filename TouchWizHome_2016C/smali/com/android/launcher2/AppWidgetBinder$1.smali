.class Lcom/android/launcher2/AppWidgetBinder$1;
.super Ljava/lang/Object;
.source "AppWidgetBinder.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppWidgetBinder;

.field final synthetic val$callback:Lcom/android/launcher2/AppWidgetBinder$Callback;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppWidgetBinder$1;->this$0:Lcom/android/launcher2/AppWidgetBinder;

    iput-object p2, p0, Lcom/android/launcher2/AppWidgetBinder$1;->val$callback:Lcom/android/launcher2/AppWidgetBinder$Callback;

    iput p3, p0, Lcom/android/launcher2/AppWidgetBinder$1;->val$widgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetBinder$1;->this$0:Lcom/android/launcher2/AppWidgetBinder;

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetBinder$1;->val$callback:Lcom/android/launcher2/AppWidgetBinder$Callback;

    iget v2, p0, Lcom/android/launcher2/AppWidgetBinder$1;->val$widgetId:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->access$000(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetBinder$1;->this$0:Lcom/android/launcher2/AppWidgetBinder;

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetBinder$1;->val$callback:Lcom/android/launcher2/AppWidgetBinder$Callback;

    iget v2, p0, Lcom/android/launcher2/AppWidgetBinder$1;->val$widgetId:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->access$100(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppWidgetBinder.allocateBindNew: invalid requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
