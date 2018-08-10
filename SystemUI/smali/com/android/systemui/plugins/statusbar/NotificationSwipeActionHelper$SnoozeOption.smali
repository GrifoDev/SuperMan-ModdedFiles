.class public Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
.super Ljava/lang/Object;
.source "NotificationSwipeActionHelper.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnoozeOption"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public confirmation:Ljava/lang/CharSequence;

.field public criterion:Landroid/service/notification/SnoozeCriterion;

.field public description:Ljava/lang/CharSequence;

.field public snoozeForMinutes:I


# direct methods
.method public constructor <init>(Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->criterion:Landroid/service/notification/SnoozeCriterion;

    iput p2, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->snoozeForMinutes:I

    iput-object p3, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->description:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->confirmation:Ljava/lang/CharSequence;

    return-void
.end method
