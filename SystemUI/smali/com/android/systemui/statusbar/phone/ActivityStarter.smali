.class public interface abstract Lcom/android/systemui/statusbar/phone/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;
    }
.end annotation


# virtual methods
.method public abstract preventNextAnimation()V
.end method

.method public abstract startActivity(Landroid/content/Intent;Z)V
.end method

.method public abstract startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
.end method

.method public abstract startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
.end method
