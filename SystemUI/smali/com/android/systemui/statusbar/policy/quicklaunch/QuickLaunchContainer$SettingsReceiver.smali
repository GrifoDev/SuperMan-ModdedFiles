.class Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickLaunchContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$1(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V

    return-void
.end method
