.class Lcom/android/launcher2/AppWidgetResizeFrame$1;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

.field final synthetic val$result:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppWidgetResizeFrame;Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->val$result:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->val$result:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(ZLcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V

    return-void
.end method
