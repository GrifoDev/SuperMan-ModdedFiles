.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-void
.end method
