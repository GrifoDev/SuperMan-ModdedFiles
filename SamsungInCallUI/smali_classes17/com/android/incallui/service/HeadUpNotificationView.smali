.class public Lcom/android/incallui/service/HeadUpNotificationView;
.super Lcom/android/incallui/service/SecCallPopupContainer;
.source "HeadUpNotificationView.java"


# instance fields
.field mHeadUpNotificationService:Lcom/android/incallui/service/HeadUpNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/HeadUpNotificationService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationView;->mHeadUpNotificationService:Lcom/android/incallui/service/HeadUpNotificationService;

    return-void
.end method
