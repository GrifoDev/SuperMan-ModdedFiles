.class Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;
.super Landroid/database/ContentObserver;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherCityAddObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$700(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSupportWeatherAnimAffordance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$800(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
