.class Lcom/android/launcher2/HomeView$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/HomeView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onAppWidgetReset()V

    return-void
.end method
