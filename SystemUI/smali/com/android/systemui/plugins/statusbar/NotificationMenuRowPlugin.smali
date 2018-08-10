.class public interface abstract Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
.super Ljava/lang/Object;
.source "NotificationMenuRowPlugin.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/Dependencies;
    value = {
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_NOTIFICATION_MENU_ROW"
    version = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;,
        Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_NOTIFICATION_MENU_ROW"

.field public static final VERSION:I = 0x2


# virtual methods
.method public abstract createMenu(Landroid/view/ViewGroup;)V
.end method

.method public abstract getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
.end method

.method public abstract getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMenuView()Landroid/view/View;
.end method

.method public abstract isMenuVisible()Z
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public abstract onHeightUpdate()V
.end method

.method public abstract onNotificationUpdated()V
.end method

.method public abstract onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z
.end method

.method public abstract onTranslationUpdate(F)V
.end method

.method public abstract resetMenu()V
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
.end method

.method public abstract setMenuItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSwipeActionHelper(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
.end method

.method public useDefaultMenuItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
