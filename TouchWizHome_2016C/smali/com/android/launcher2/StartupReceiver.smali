.class public Lcom/android/launcher2/StartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartupReceiver.java"


# static fields
.field static final SYSTEM_READY:Ljava/lang/String; = "com.android.launcher2.SYSTEM_READY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher2.SYSTEM_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method
