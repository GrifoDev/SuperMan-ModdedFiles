.class Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/NightDisplayService$CustomAutoMode;


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    invoke-static {v0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->-wrap0(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V

    return-void
.end method
