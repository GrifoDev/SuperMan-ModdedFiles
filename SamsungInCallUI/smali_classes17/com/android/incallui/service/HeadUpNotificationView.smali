.class public Lcom/android/incallui/service/HeadUpNotificationView;
.super Lcom/android/incallui/service/SecCallPopupContainer;
.source "HeadUpNotificationView.java"


# instance fields
.field mHeadUpNotificationService:Lcom/android/incallui/service/HeadUpNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/HeadUpNotificationService;)V
    .locals 0
    .param p1, "context"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationView;->mHeadUpNotificationService:Lcom/android/incallui/service/HeadUpNotificationService;

    .line 47
    return-void
.end method
