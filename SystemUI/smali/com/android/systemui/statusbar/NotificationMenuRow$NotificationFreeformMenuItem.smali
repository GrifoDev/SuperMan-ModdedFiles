.class public Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationFreeformMenuItem;
.super Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;
.source "NotificationMenuRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationFreeformMenuItem"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    return-void
.end method
