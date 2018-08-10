.class public Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;
.super Ljava/lang/Object;
.source "LockNotificationChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppData"
.end annotation


# instance fields
.field channel:Landroid/app/NotificationChannel;

.field pkg:Ljava/lang/String;

.field uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
