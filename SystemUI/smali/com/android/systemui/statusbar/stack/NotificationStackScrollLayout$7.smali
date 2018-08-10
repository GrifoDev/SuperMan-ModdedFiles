.class final Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;
.super Landroid/util/FloatProperty;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBackgroundFadeAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;->get(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;->setValue(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V

    return-void
.end method
