.class Lcom/android/settings/notification/AppNotificationSettings$1;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AppNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/NotificationChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/app/NotificationChannel;

    check-cast p2, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/AppNotificationSettings$1;->compare(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I

    move-result v0

    return v0
.end method
