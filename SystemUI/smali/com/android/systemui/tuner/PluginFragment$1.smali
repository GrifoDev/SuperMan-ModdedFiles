.class Lcom/android/systemui/tuner/PluginFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/PluginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/PluginFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/PluginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/PluginFragment$1;->this$0:Lcom/android/systemui/tuner/PluginFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/PluginFragment$1;->this$0:Lcom/android/systemui/tuner/PluginFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/PluginFragment;->-wrap0(Lcom/android/systemui/tuner/PluginFragment;)V

    return-void
.end method
