.class public interface abstract Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SViewCoverLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusBarCoverShortcutOpen"
.end annotation


# virtual methods
.method public abstract startNotifcationIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract startShortcutApp(Landroid/content/Intent;)V
.end method

.method public abstract startShortcutDragAnimation()V
.end method

.method public abstract stopShortcutDragAnimation()V
.end method
